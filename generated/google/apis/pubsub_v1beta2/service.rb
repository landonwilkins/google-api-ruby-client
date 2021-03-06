# Copyright 2015 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module PubsubV1beta2
      # Google Cloud Pub/Sub API
      #
      # Provides reliable, many-to-many, asynchronous messaging between applications.
      #
      # @example
      #    require 'google/apis/pubsub_v1beta2'
      #
      #    Pubsub = Google::Apis::PubsubV1beta2 # Alias the module
      #    service = Pubsub::PubsubService.new
      #
      # @see https://cloud.google.com/pubsub/docs
      class PubsubService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://pubsub.googleapis.com/', '')
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy.
        # @param [String] resource
        #   REQUIRED: The resource for which policy is being specified. Resource is
        #   usually specified as a path, such as, projects/`project`/zones/`zone`/disks/`
        #   disk`.
        # @param [Google::Apis::PubsubV1beta2::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubV1beta2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_topic_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta2/{+resource}:setIamPolicy'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::PubsubV1beta2::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::PubsubV1beta2::Policy::Representation
          command.response_class = Google::Apis::PubsubV1beta2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Is empty if the policy or the
        # resource does not exist.
        # @param [String] resource
        #   REQUIRED: The resource for which policy is being requested. Resource is
        #   usually specified as a path, such as, projects/`project`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubV1beta2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_iam_policy_project_topic(resource, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta2/{+resource}:getIamPolicy'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::PubsubV1beta2::Policy::Representation
          command.response_class = Google::Apis::PubsubV1beta2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource.
        # @param [String] resource
        #   REQUIRED: The resource for which policy detail is being requested. Resource is
        #   usually specified as a path, such as, projects/`project`.
        # @param [Google::Apis::PubsubV1beta2::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubV1beta2::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_topic_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta2/{+resource}:testIamPermissions'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::PubsubV1beta2::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::PubsubV1beta2::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::PubsubV1beta2::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates the given topic with the given name.
        # @param [String] name
        #   The name of the topic. It must have the format `"projects/`project`/topics/`
        #   topic`"`. ``topic`` must start with a letter, and contain only letters (`[A-Za-
        #   z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`),
        #   tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255
        #   characters in length, and it must not start with `"goog"`.
        # @param [Google::Apis::PubsubV1beta2::Topic] topic_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubV1beta2::Topic] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::Topic]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_topic(name, topic_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta2/{+name}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::PubsubV1beta2::Topic::Representation
          command.request_object = topic_object
          command.response_representation = Google::Apis::PubsubV1beta2::Topic::Representation
          command.response_class = Google::Apis::PubsubV1beta2::Topic
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds one or more messages to the topic. Returns NOT_FOUND if the topic does
        # not exist. The message payload must not be empty; it must contain either a non-
        # empty data field, or at least one attribute.
        # @param [String] topic
        #   The messages in the request will be published on this topic.
        # @param [Google::Apis::PubsubV1beta2::PublishRequest] publish_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubV1beta2::PublishResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::PublishResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def publish(topic, publish_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta2/{+topic}:publish'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::PubsubV1beta2::PublishRequest::Representation
          command.request_object = publish_request_object
          command.response_representation = Google::Apis::PubsubV1beta2::PublishResponse::Representation
          command.response_class = Google::Apis::PubsubV1beta2::PublishResponse
          command.params['topic'] = topic unless topic.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the configuration of a topic.
        # @param [String] topic
        #   The name of the topic to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubV1beta2::Topic] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::Topic]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_topic(topic, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta2/{+topic}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::PubsubV1beta2::Topic::Representation
          command.response_class = Google::Apis::PubsubV1beta2::Topic
          command.params['topic'] = topic unless topic.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists matching topics.
        # @param [String] project
        #   The name of the cloud project that topics belong to.
        # @param [Fixnum] page_size
        #   Maximum number of topics to return.
        # @param [String] page_token
        #   The value returned by the last ListTopicsResponse; indicates that this is a
        #   continuation of a prior ListTopics call, and that the system should return the
        #   next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubV1beta2::ListTopicsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::ListTopicsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_topics(project, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta2/{+project}/topics'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::PubsubV1beta2::ListTopicsResponse::Representation
          command.response_class = Google::Apis::PubsubV1beta2::ListTopicsResponse
          command.params['project'] = project unless project.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the topic with the given name. Returns NOT_FOUND if the topic does not
        # exist. After a topic is deleted, a new topic may be created with the same name;
        # this is an entirely new topic with none of the old configuration or
        # subscriptions. Existing subscriptions to this topic are not deleted, but their
        # `topic` field is set to `_deleted-topic_`.
        # @param [String] topic
        #   Name of the topic to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubV1beta2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_topic(topic, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta2/{+topic}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::PubsubV1beta2::Empty::Representation
          command.response_class = Google::Apis::PubsubV1beta2::Empty
          command.params['topic'] = topic unless topic.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the name of the subscriptions for this topic.
        # @param [String] topic
        #   The name of the topic that subscriptions are attached to.
        # @param [Fixnum] page_size
        #   Maximum number of subscription names to return.
        # @param [String] page_token
        #   The value returned by the last ListTopicSubscriptionsResponse; indicates that
        #   this is a continuation of a prior ListTopicSubscriptions call, and that the
        #   system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubV1beta2::ListTopicSubscriptionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::ListTopicSubscriptionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_topic_subscriptions(topic, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta2/{+topic}/subscriptions'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::PubsubV1beta2::ListTopicSubscriptionsResponse::Representation
          command.response_class = Google::Apis::PubsubV1beta2::ListTopicSubscriptionsResponse
          command.params['topic'] = topic unless topic.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy.
        # @param [String] resource
        #   REQUIRED: The resource for which policy is being specified. Resource is
        #   usually specified as a path, such as, projects/`project`/zones/`zone`/disks/`
        #   disk`.
        # @param [Google::Apis::PubsubV1beta2::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubV1beta2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_subscription_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta2/{+resource}:setIamPolicy'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::PubsubV1beta2::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::PubsubV1beta2::Policy::Representation
          command.response_class = Google::Apis::PubsubV1beta2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Is empty if the policy or the
        # resource does not exist.
        # @param [String] resource
        #   REQUIRED: The resource for which policy is being requested. Resource is
        #   usually specified as a path, such as, projects/`project`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubV1beta2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_iam_policy_project_subscription(resource, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta2/{+resource}:getIamPolicy'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::PubsubV1beta2::Policy::Representation
          command.response_class = Google::Apis::PubsubV1beta2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource.
        # @param [String] resource
        #   REQUIRED: The resource for which policy detail is being requested. Resource is
        #   usually specified as a path, such as, projects/`project`.
        # @param [Google::Apis::PubsubV1beta2::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubV1beta2::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_subscription_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta2/{+resource}:testIamPermissions'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::PubsubV1beta2::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::PubsubV1beta2::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::PubsubV1beta2::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a subscription to a given topic for a given subscriber. If the
        # subscription already exists, returns ALREADY_EXISTS. If the corresponding
        # topic doesn't exist, returns NOT_FOUND. If the name is not provided in the
        # request, the server will assign a random name for this subscription on the
        # same project as the topic.
        # @param [String] name
        #   The name of the subscription. It must have the format `"projects/`project`/
        #   subscriptions/`subscription`"`. ``subscription`` must start with a letter, and
        #   contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`),
        #   underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%
        #   `). It must be between 3 and 255 characters in length, and it must not start
        #   with `"goog"`.
        # @param [Google::Apis::PubsubV1beta2::Subscription] subscription_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubV1beta2::Subscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::Subscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_subscription(name, subscription_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta2/{+name}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::PubsubV1beta2::Subscription::Representation
          command.request_object = subscription_object
          command.response_representation = Google::Apis::PubsubV1beta2::Subscription::Representation
          command.response_class = Google::Apis::PubsubV1beta2::Subscription
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the configuration details of a subscription.
        # @param [String] subscription
        #   The name of the subscription to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubV1beta2::Subscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::Subscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_subscription(subscription, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta2/{+subscription}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::PubsubV1beta2::Subscription::Representation
          command.response_class = Google::Apis::PubsubV1beta2::Subscription
          command.params['subscription'] = subscription unless subscription.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists matching subscriptions.
        # @param [String] project
        #   The name of the cloud project that subscriptions belong to.
        # @param [Fixnum] page_size
        #   Maximum number of subscriptions to return.
        # @param [String] page_token
        #   The value returned by the last ListSubscriptionsResponse; indicates that this
        #   is a continuation of a prior ListSubscriptions call, and that the system
        #   should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubV1beta2::ListSubscriptionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::ListSubscriptionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_subscriptions(project, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta2/{+project}/subscriptions'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::PubsubV1beta2::ListSubscriptionsResponse::Representation
          command.response_class = Google::Apis::PubsubV1beta2::ListSubscriptionsResponse
          command.params['project'] = project unless project.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing subscription. All pending messages in the subscription are
        # immediately dropped. Calls to Pull after deletion will return NOT_FOUND. After
        # a subscription is deleted, a new one may be created with the same name, but
        # the new one has no association with the old subscription, or its topic unless
        # the same topic is specified.
        # @param [String] subscription
        #   The subscription to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubV1beta2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_subscription(subscription, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta2/{+subscription}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::PubsubV1beta2::Empty::Representation
          command.response_class = Google::Apis::PubsubV1beta2::Empty
          command.params['subscription'] = subscription unless subscription.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Modifies the ack deadline for a specific message. This method is useful to
        # indicate that more time is needed to process a message by the subscriber, or
        # to make the message available for redelivery if the processing was interrupted.
        # @param [String] subscription
        #   The name of the subscription.
        # @param [Google::Apis::PubsubV1beta2::ModifyAckDeadlineRequest] modify_ack_deadline_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubV1beta2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def modify_ack_deadline(subscription, modify_ack_deadline_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta2/{+subscription}:modifyAckDeadline'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::PubsubV1beta2::ModifyAckDeadlineRequest::Representation
          command.request_object = modify_ack_deadline_request_object
          command.response_representation = Google::Apis::PubsubV1beta2::Empty::Representation
          command.response_class = Google::Apis::PubsubV1beta2::Empty
          command.params['subscription'] = subscription unless subscription.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Acknowledges the messages associated with the ack tokens in the
        # AcknowledgeRequest. The Pub/Sub system can remove the relevant messages from
        # the subscription. Acknowledging a message whose ack deadline has expired may
        # succeed, but such a message may be redelivered later. Acknowledging a message
        # more than once will not result in an error.
        # @param [String] subscription
        #   The subscription whose message is being acknowledged.
        # @param [Google::Apis::PubsubV1beta2::AcknowledgeRequest] acknowledge_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubV1beta2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def acknowledge(subscription, acknowledge_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta2/{+subscription}:acknowledge'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::PubsubV1beta2::AcknowledgeRequest::Representation
          command.request_object = acknowledge_request_object
          command.response_representation = Google::Apis::PubsubV1beta2::Empty::Representation
          command.response_class = Google::Apis::PubsubV1beta2::Empty
          command.params['subscription'] = subscription unless subscription.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Pulls messages from the server. Returns an empty list if there are no messages
        # available in the backlog. The server may return UNAVAILABLE if there are too
        # many concurrent pull requests pending for the given subscription.
        # @param [String] subscription
        #   The subscription from which messages should be pulled.
        # @param [Google::Apis::PubsubV1beta2::PullRequest] pull_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubV1beta2::PullResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::PullResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def pull(subscription, pull_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta2/{+subscription}:pull'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::PubsubV1beta2::PullRequest::Representation
          command.request_object = pull_request_object
          command.response_representation = Google::Apis::PubsubV1beta2::PullResponse::Representation
          command.response_class = Google::Apis::PubsubV1beta2::PullResponse
          command.params['subscription'] = subscription unless subscription.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Modifies the PushConfig for a specified subscription. This may be used to
        # change a push subscription to a pull one (signified by an empty PushConfig) or
        # vice versa, or change the endpoint URL and other attributes of a push
        # subscription. Messages will accumulate for delivery continuously through the
        # call regardless of changes to the PushConfig.
        # @param [String] subscription
        #   The name of the subscription.
        # @param [Google::Apis::PubsubV1beta2::ModifyPushConfigRequest] modify_push_config_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubV1beta2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def modify_push_config(subscription, modify_push_config_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta2/{+subscription}:modifyPushConfig'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::PubsubV1beta2::ModifyPushConfigRequest::Representation
          command.request_object = modify_push_config_request_object
          command.response_representation = Google::Apis::PubsubV1beta2::Empty::Representation
          command.response_class = Google::Apis::PubsubV1beta2::Empty
          command.params['subscription'] = subscription unless subscription.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
